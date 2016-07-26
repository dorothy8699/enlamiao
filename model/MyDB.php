<?php
/**
 * class DB
 *
 * @author Dorothy <koueig@gmail.com> 2016-07-05
 */

require_once './core/DB.class.php';

class MyDB extends DB{

    public function insertEvent($data) {
        $sql = "INSERT INTO event(eid, title, content, options, end, createDate ) VALUES(?,?,?,?,?,?)";
        try{
          $now = date('Y-m-d h:i:s',time());
          $stmt= $this->db->prepare($sql); 
          $stmt->bind_param('ssssss', $data['eid'], $data['title'],$data['content'], $data['options'], $data['end'], $now); 
            if(!$stmt->execute()) return false;
            $stmt->close();
        }catch(Exception $e){
            throw new Exception('Error');
        }
        return true;
    }

    public function insertItem($eid, $optArr){
        $now = date('Y-m-d h:i:s',time());
        $sql = "INSERT INTO item(eid, opt, createDate) VALUES(?,?,?)";
        foreach($optArr as $option){
          try{
            $stmt= $this->db->prepare($sql); 
            $stmt->bind_param('sss', $eid, $option, $now);
            if(!$stmt->execute()) return false;
            $stmt->close();
          }catch(Exception $e){
            throw new Exception('Error');
          }
        }
        return true;
    }

    public function selectEventByID($eid){
        $result = array();
        $sql = "SELECT id,eid,title,content,options,end FROM event where eid = ?";
        try{
          $stmt= $this->db->prepare($sql); 
          $stmt->bind_param('s', $eid);
          if(!$stmt->execute()) return false;
          $stmt->store_result();
          $stmt->bind_result($result['id'],$result['eid'],$result['title'],$result['content'],$result['option'],$result['end']);
          $stmt->fetch();
          $stmt->close();
        }catch(Exception $e){
          throw new Exception('Error');
        }
        return $result;
      }

    public function selectVoteByID($eid){
        $result = array();
        $sql = "SELECT i.id as pid, i.eid as eid,i.opt as opt,v.id as vid,v.uid, v.name as uname,v.vote FROM item as i left join vote as v on i.id = v.pid where i.eid=? ";
        try{
            $stmt= $this->db->prepare($sql); 
            $stmt->bind_param('s', $eid);
            if(!$stmt->execute()) return false;
            $stmt->store_result();
            $stmt->bind_result($pid,$eid,$opt,$vid,$uid,$uname,$vote);
            while($stmt->fetch()) {
              $result[] = array(
                'pid'  => $pid,
                'eid' => $eid,
                'vid' => $vid,
                'uid' => $uid,
                'opt' => $opt,
                'uname' => $uname,
                'vote' => $vote
                );
            }
            $stmt->close(); 
          }catch(Exception $e){
            throw new Exception('Error');
        }
        return $result;
    }

    public function selectItemByID($eid){
      $result = array();
      $sql = "SELECT id FROM item where eid = ?";
      try{
        $stmt= $this->db->prepare($sql); 
        $stmt->bind_param('s', $eid);
        if(!$stmt->execute()) return false;
        $stmt->store_result();
        $stmt->bind_result($id);
        while($stmt->fetch()) {
          $result[] = $id;
        }
        $stmt->close();
      }catch(Exception $e){
        throw new Exception('Error');
      }
      return $result;
    }  
    
    public function insertUser($polling){
        $now = date('Y-m-d h:i:s',time());
        $sql = "INSERT INTO vote(pid, uid, eid, name, vote, createDate) VALUES(?,?,?,?,?,?)";
        foreach($polling as $data){
          try{
            $stmt= $this->db->prepare($sql); 
            $stmt->bind_param('ssssss', $data['pid'], $data['uid'], $data['eid'], $data['name'], $data['vote'], $now); 
            $stmt->execute();
          }catch(Exception $e){
            throw new Exception('Error');
          }
        }
        return true;
    }



}
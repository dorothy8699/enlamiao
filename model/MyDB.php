<?php
/**
 * class DB
 *
 * @author Dorothy <koueig@gmail.com> 2016-07-05
 */

require_once './core/DB.class.php';

class MyDB extends DB{

    public function insertEvent($data) {
        $sql = "INSERT INTO event(eid, title, content, options, end) VALUES(?,?,?,?,?)";
        try{
          $stmt= $this->db->prepare($sql); 
          $stmt->bind_param('sssss', $data['eid'], $data['title'],$data['content'], $data['options'], $data['end']); 
            if(!$stmt->execute()) return false;
            $stmt->close();
        }catch(Exception $e){
            throw new Exception('Error');
        }
        return true;
    }

    public function insertItem($eid, $optArr){
        $sql = "INSERT INTO item(eid, opt) VALUES(?,?)";
        foreach($optArr as $option){
          try{
            $stmt= $this->db->prepare($sql); 
            $stmt->bind_param('ss', $eid, $option);
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
        $sql = "SELECT * FROM event where eid = ?";
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
        $sql = "SELECT i.id as pid, i.eid as eid,i.opt as opt,u.id as uid,u.name as uname,u.vote FROM item as i left join user as u on i.id=u.pid where i.eid = ? ";
        try{
            $stmt= $this->db->prepare($sql); 
            $stmt->bind_param('s', $eid);
            if(!$stmt->execute()) return false;
            $stmt->store_result();
            $stmt->bind_result($pid,$eid,$opt,$uid,$uname,$vote);
            while($stmt->fetch()) {
              $result[] = array(
                'pid'  => $pid,
                'eid' => $eid,
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
    


}
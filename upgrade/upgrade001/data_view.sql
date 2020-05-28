SET SERVEROUTPUT ON

CREATE VIEW FINAL AS
    SELECT u.first_name,
    u.second_name AS Last_name,
    u.login as Nickname,
    u.email AS EMAIL,
    g.genre as Music_Type,
    c.name_of_song as Composition_name,
    c.duration_of_composition AS LENGTH,
    c.count_of_likes AS Composition_Likes,
    c.count_of_listening AS LISTEN,
    cr.review AS Comments_Track,
    us.current_playlist AS Current_listening,
    us.stopping_time AS STOPPED_TIME
    
    FROM EXDATA ex
        JOIN users u on ex.nickname = u.login
        JOIN composition c ON ex.composition_name = c.name_of_song
        JOIN composition_review cr ON ex.comments_track = cr.review        
        JOIN genre g ON ex.music_type = g.genre
        JOIN user_state us on ex.stopped_time = us.stopping_time;
     
    
    
SET SERVEROUTPUT OFF
    
> DECLARE
  2      A NUMBER := &a;
  3      b NUMBER := &b;
  4      c NUMBER := &c;
  5  BEGIN
  6      IF a > b
  7         AND a > c THEN
  8        dbms_output.Put_line('Greatest number is '||a);
  9      ELSIF b > a
 10            AND b > c THEN
 11        dbms_output.Put_line('Greatest number is '||b);
 12      ELSE
 13        dbms_output.Put_line('Greatest number is '||c);
 14      END IF;
 15  END;
 16  /

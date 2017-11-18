$tasklist = tasklist | findstr "node.exe"
if($tasklist){
    "Result: PID "+$tasklist

    $PIDRegex = [regex]"\b(\d+)\b";
    $pidNum = $PIDRegex.Match($tasklist);

    "Kill PID "+$pidNum.captures[0].Value;
    taskkill /f /pid $pidNum.captures[0].Value;
}
else{
    "Result: NULL"
}

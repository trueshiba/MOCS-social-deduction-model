
globals [
  max-trust
]

breed [ imposters imposter ]
breed [ crewmates crewmate ]

turtles-own [ 
  distance,
  trust
 ]

to setup 
  clear-all
  reset-ticks
  
  set-default-shape crewmates "crewmate"
  create-crewmates initial-number-crewmates [
    set color blue
    set trust-array:from-list n-values 10 [max-trust] ; Maybe doesnt work idk
    setxy random-xcor random-ycor
  ]

  set-default-shape imposters "imposter"
  create-imposters initial-number-imposters [
    set color red
    set trust max-trust
    set alpha init-alpha  ; Initial Aggression Level
    set beta init-beta  ; Initial patience level
    set time-since-prev-kill 0;
    ; set cooldown ; could be cool to have
    setxy random-xcor random-ycor
  ]

end


to go 
  if not any? turtles [ stop ]

  if not any? crewmates and count imposters > 1 [ user-message "The imposter won!" stop]

  ; If time for voting
    ; vote


  ask crewmate [

    check-trust

    move

  ]


  ask imposter [

    kill


    ; Move or vent, not both
    vent

    move

  ]

end

; Function to move turtles
to move
  ; check personal radius?

  ; move away from untrusted agents

end

; Function to check if crewmate should decrease trust with others
to check-trust

  ; check personal radius for other turtles

  ; If other turtles are present in radius
    ; Deduct trust from their array index

end

; Function to see if imposter vents and to where
to vent

end

; Function to see if imposter will kill turtle in its radius
to kill

end

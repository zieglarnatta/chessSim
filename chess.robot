*** Settings ***
Documentation   Created April 23 2022
...             By: Roy Yap
...             Last Updated April 23 2022
...             Chess game simulator

Library         Collections

*** Variable ***
${EMPTY}
&{chessboardNew}
@{chessboardNew}
${square}

*** Test Cases ***
Build chessboard
    [Tags]  createChessboard
    &{chessboardNewManual}=       Create Dictionary
    ...             A1=${EMPTY}  A2=${EMPTY}  A3=${EMPTY}  A4=${EMPTY}  A5=${EMPTY}  A6=${EMPTY}   A7=${EMPTY}  A8=${EMPTY}
    ...             B1=${EMPTY}  B2=${EMPTY}  B3=${EMPTY}  B4=${EMPTY}  B5=${EMPTY}  B6=${EMPTY}   B7=${EMPTY}  B8=${EMPTY}
    ...             C1=${EMPTY}  C2=${EMPTY}  C3=${EMPTY}  C4=${EMPTY}  C5=${EMPTY}  C6=${EMPTY}   C7=${EMPTY}  C8=${EMPTY}
    ...             D1=${EMPTY}  D2=${EMPTY}  D3=${EMPTY}  D4=${EMPTY}  D5=${EMPTY}  D6=${EMPTY}   D7=${EMPTY}  D8=${EMPTY}
    ...             E1=${EMPTY}  E2=${EMPTY}  E3=${EMPTY}  E4=${EMPTY}  E5=${EMPTY}  E6=${EMPTY}   E7=${EMPTY}  E8=${EMPTY}
    ...             F1=${EMPTY}  F2=${EMPTY}  F3=${EMPTY}  F4=${EMPTY}  F5=${EMPTY}  F6=${EMPTY}   F7=${EMPTY}  F8=${EMPTY}
    ...             G1=${EMPTY}  G2=${EMPTY}  G3=${EMPTY}  G4=${EMPTY}  G5=${EMPTY}  G6=${EMPTY}   G7=${EMPTY}  G8=${EMPTY}
    ...             H1=${EMPTY}  H2=${EMPTY}  H3=${EMPTY}  H4=${EMPTY}  H5=${EMPTY}  H6=${EMPTY}   H7=${EMPTY}  H8=${EMPTY}

#    &{chessboardNew}=	Create Dictionary       ${square}   ${EMPTY}
    log     The Dictionary is &{chessboardNewManual}       console=yes


#    ${chessboardNewManual}=       Create Dictionary
#    ...             A1=${EMPTY}  A2=${EMPTY}  A3=${EMPTY}  A4=${EMPTY}  A5=${EMPTY}  A6=${EMPTY}   A7=${EMPTY}  A8=${EMPTY}
#    ...             B1=${EMPTY}  B2=${EMPTY}  B3=${EMPTY}  B4=${EMPTY}  B5=${EMPTY}  B6=${EMPTY}   B7=${EMPTY}  B8=${EMPTY}
#    ...             C1=${EMPTY}  C2=${EMPTY}  C3=${EMPTY}  C4=${EMPTY}  C5=${EMPTY}  C6=${EMPTY}   C7=${EMPTY}  C8=${EMPTY}
#    ...             D1=${EMPTY}  D2=${EMPTY}  D3=${EMPTY}  D4=${EMPTY}  D5=${EMPTY}  D6=${EMPTY}   D7=${EMPTY}  D8=${EMPTY}
#    ...             E1=${EMPTY}  E2=${EMPTY}  E3=${EMPTY}  E4=${EMPTY}  E5=${EMPTY}  E6=${EMPTY}   E7=${EMPTY}  E8=${EMPTY}
#    ...             F1=${EMPTY}  F2=${EMPTY}  F3=${EMPTY}  F4=${EMPTY}  F5=${EMPTY}  F6=${EMPTY}   F7=${EMPTY}  F8=${EMPTY}
#    ...             G1=${EMPTY}  G2=${EMPTY}  G3=${EMPTY}  G4=${EMPTY}  G5=${EMPTY}  G6=${EMPTY}   G7=${EMPTY}  G8=${EMPTY}
#    ...             H1=${EMPTY}  H2=${EMPTY}  H3=${EMPTY}  H4=${EMPTY}  H5=${EMPTY}  H6=${EMPTY}   H7=${EMPTY}  H8=${EMPTY}
#
#    log     The Dictionary is ${chessboardNewManual}       console=yes


    ${type dictionary}=    Evaluate     type($chessboardNewManual)


#    &{chessboardNew}=
    Convert to Dictionary       ${chessboardNewManual}
    log     The Dictionary is ${chessboardNewManual}       console=yes

     ${type dictionary}=    Evaluate     type($chessboardNewManual)


#    Convert to Dictionary
#    Get Dictionary Items     @{chessboardNewManual}
    FOR     ${chessboardNewManual}  IN   &{chessboardNewManual}
        ${type dictionary}=    Evaluate     type($chessboardNewManual)
        log     ${chessboardNewManual}  console=yes
    END
    Collections.Get Dictionary Values     &{chessboardNewManual.\'1'}
    log     The Value is ${chessboardNew}       console=yes
    log     The Value is ${square}       console=yes
#    Append to list          ${chessboardNew}    ${square}
#    ${list}= Create List

*** Keywords ***
Build Chess Board Smart
    FOR     ${j}    IN   A   B   C   D   E   F   G   H
        Create List         ${chessboardNew}
        Set GLobal Variable         ${chessboardNew}
        #log  ${j}       console=yes
        FOR    ${i}     IN RANGE    8
            ${i}=       Convert to integer  ${i}
            ${i}        Evaluate    ${i}+1
            #log  ${i}       console=yes
            ${k}=       Convert to string  ${i}
            ${square}=        Catenate    ${square} ${j}${k}
            log  ${square}       console=yes
            Set Global Variable     ${square}
            &{chessboardNew}=	Create Dictionary       ${square}   ${EMPTY}

#            ${type string}=    Evaluate     type($chessboardNew)
#            Log To Console     ${type string}
#
            log     The Value is &{chessboardNew}       console=yes
#            Set Global Variable     &{chessboardNew}
#            Convert to Dictionary     ${chessboardNew}
#            ${chessboardNew}=       Create List         '&{chessboardNew}'
#            Append to list          ${chessboardNew}    '&{chessboardNew}'
#            log     The Value is ${chessboardNew}       console=yes
#            &{all libs} =	Get library instance	all=True
#            ${no decoration} =	Get Variables	no_decoration=Yes
#            Dictionary Should Contain Key	${no decoration}    A1
#            log   &{chessboardNew}   console=yes
        END
    END
    &{chessboardNew}=	Create Dictionary       ${square}   ${EMPTY}
    log     The Value is &{chessboardNew}       console=yes
    log     The Value is ${chessboardNew}       console=yes
    log     The Value is ${square}       console=yes
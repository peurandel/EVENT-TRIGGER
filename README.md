# 백색대화
마인크래프트 백색대화 데이터팩에 오신 것을 환영합니다.
이 데이터팩은 특정 마커 주위에서 웅크리면 이벤트가 출력되는 것을 목표로 합니다.


# 명령어
저희는 노드를 커스텀할 수 있는 명령어들이 있습니다.
보통 마커의 data nbt들을 활용합니다.
노드들을 커스텀 하실 땐 편의를 위한 기능을 제공합니다.
/scoreboard players set #prd.event.op prd.bool 1을 입력하시면 노드 위에 id값을 표시해주며 연결된 노드들간에 파티클도 표시됩니다.

## 소환
/function prd.event:summon
이벤트 노드 소환

## 기본
노드를 커스텀할 땐 무조건 가까이 붙어서 /data modify entity @e[tag=prd.entity.event,limit=1,sort=nearest]가 접두 명령어입니다.
(이후 바뀔 수 있음.)

## 스케줄 추가하는법
스케줄은 실행시 입력된 대화를 출력시킵니다.

/data modify entity @e[tag=prd.entity.event,limit=1,sort=nearest] data.schedule set value [{text:'{"text":"안녕하세요. 이건 백색대화 출력문입니다."}'}]
or
append.

## 이벤트시 명령어 실행시키는법
/data modify entity @e[tag=prd.entity.event,limit=1,sort=nearest] data.function set value "say 오늘따라 상쾌한 날입니다."

## 커스텀 파티클
백색대화의 컨셉인 end_rod 파티클을 접고 사용자가 원하는 파티클을 설정할 수 있습니다.
단, 갯수와 속도, 나오는 범위 등은 설정할 수 없으며 오로지 파티클 종류만 수정할 수 있습니다.
만지지 않아도 무방합니다. end_rod 파티클이 기본으로 출력됩니다.
/data modify entity @e[tag=prd.entity.event,limit=1,sort=nearest] data.particle set value "파티클 이름"


## 커스텀 사운드
백색대화의 컨셉인 evoke소리를 접고 트리거 발동시 사용자가 원하는 소리를 설정할 수 있습니다.
단, 소리의 볼륨과 피치, 소리가 나는 위치 등은 조절할 수 없으며, 오로지 소리 종류만을 바꿀 수 있습니다.
만지지 않아도 무방합니다. evoke 소리가 기본으로 출력됩니다.
/data modify entity @e[tag=prd.entity.event,limit=1,sort=nearest] data.particle set value "파티클 이름"

# 노드 오픈
특정 노드가 발동될때 다른 노드를 열고 싶으신가요?
data.function을 수정해 노드를 소환하거나 오픈할 수도 있습니다만, 저희는 편의를 위하여 GOTO라는 명령어를 제공합니다.
노드의 data의 closed값이 1b인 경우 허용된 사람을 제외한 모든 사람들에게 자신의 모습을 숨기며.(파티클이 출력되지 않으며) 설령 위치를 알고 실행을 시켜도 실행되지 않습니다.

**/function prd.event:give/all을 통해 편집기인 실 아이템을 받을 수 있습니다.**

실을 든 상태에서 웅크리기 우클릭 시 모드를 변경할 수 있으며, 그 기능들은 다음과 같습니다.

## Select
수정할 노드를 선택합니다. 
## GOTO
노드를 실행시 오픈될 다음 노드들을 결정합니다.
**수정할 노드를 선택한 다음** 연결할 노드를 선택해 우클릭해주면 두 노드는 연결됩니다.

## GOTOCUT
노드의 연결을 끊습니다. 마찬가지로 연결된 노드들을 바라보고 우클릭해주시면 됩니다.

## REMOVE
노드를 지웁니다. 아직 구현되지 않았습니다.

## MOVE

노드의 위치를 움직입니다. 아직 구현되지 않았습니다.

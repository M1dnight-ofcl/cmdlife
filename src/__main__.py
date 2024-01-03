# M1dnightDev (c) 2024
import os
from pathlib import Path

class CMDLife:
    def __init__(self):
        self.parse("");
    os.curdir
    class Util:
        def loadAsset(asset,scale=3): 
            return open(Path(f"./assets/{asset}.TaX{str(scale)}").resolve(),"r").read();

    def parse(self, msg:str):
        bpmsg=(msg.lower()).split(" ");
        print(self.Util.loadAsset("logo",6));

CMDLife()
.class Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;
.super Ljava/util/HashMap;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionStateSetMaker;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$0JGwMoxhGDLS503qKGcOAHfjWq0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$0JGwMoxhGDLS503qKGcOAHfjWq0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$0uybDjnXqAZAAkzJnltRtfLcFSQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$0uybDjnXqAZAAkzJnltRtfLcFSQ;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_CAMERA:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$jFcY9UOovjldvKcfrkURlKBwNb0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$jFcY9UOovjldvKcfrkURlKBwNb0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_CAMERA:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$hFfQMy79RztGmWtXMOSQHBrT-ZU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$hFfQMy79RztGmWtXMOSQHBrT-ZU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_SHOW_SETTING:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$cKKYiiGvlmvtrGB5puQ72V95phs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$cKKYiiGvlmvtrGB5puQ72V95phs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_FLASH:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$s_9YXxQzAQrQV15HsWr6gkQnF80;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$s_9YXxQzAQrQV15HsWr6gkQnF80;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_FLASH:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$LIedCWSlT8oOrnyw0gRzQJ0UZDQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$LIedCWSlT8oOrnyw0gRzQJ0UZDQ;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_TIMER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$0-Mgn2A6UbPAmvYygyNV3NRYoYQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$0-Mgn2A6UbPAmvYygyNV3NRYoYQ;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_TIMER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$MNSlIXV_ld_4sJ9KfjCjG1bwxmo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$MNSlIXV_ld_4sJ9KfjCjG1bwxmo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_SUPERSTEADY:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$-OdcIUmQ2_Nj3loFgWXNiQzqqgo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$-OdcIUmQ2_Nj3loFgWXNiQzqqgo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_SUPERSTEADY:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$8KvqHco_r6a1Qv1nQYK0TkgxvAM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$8KvqHco_r6a1Qv1nQYK0TkgxvAM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MOTIONPHOTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$psnE2Dtk2wJjrC4eyXXmMkd5Ci8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$psnE2Dtk2wJjrC4eyXXmMkd5Ci8;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MOTIONPHOTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$PzqvIMj_MIQsZz0Et1Z-e4ATuOo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$PzqvIMj_MIQsZz0Et1Z-e4ATuOo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$VKe4YnpqL2yvqX7LVXL3Bovcc0g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$VKe4YnpqL2yvqX7LVXL3Bovcc0g;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$cnshTcfkpsMYE8Hw5z2br5uO68M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$cnshTcfkpsMYE8Hw5z2br5uO68M;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_ZOOM:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$pvJW-8hIkFH30sbphPwgAGr8QKE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$pvJW-8hIkFH30sbphPwgAGr8QKE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_ZOOM:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$i0g6QTZdWtUpku1wpAYUVo6kvSs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$i0g6QTZdWtUpku1wpAYUVo6kvSs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_ANGLE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$EAF9nCnz5wmvW1ZRyi2pw8trg50;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$EAF9nCnz5wmvW1ZRyi2pw8trg50;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_ANGLE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$AR88qI4AoNVMz085Pu0RdM1QEaE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$AR88qI4AoNVMz085Pu0RdM1QEaE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CREATE_MYFILTER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$-4sUUdEP-zo53ekCPHGFKswOKL4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$-4sUUdEP-zo53ekCPHGFKswOKL4;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_SELECT_MYFILTER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$aIzUo0sM13aRYHU-leeT0pdXkbY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$aIzUo0sM13aRYHU-leeT0pdXkbY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_GET_LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$ISBaNQQExLviZD3Y2HAs7E5cX1w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$ISBaNQQExLviZD3Y2HAs7E5cX1w;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_SET_LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$5JaASY7gybfXCAE0QM6W5bOE2Ak;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$5JaASY7gybfXCAE0QM6W5bOE2Ak;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHECK_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$-nMyP8wB7UgoJb3FDcq3XcI-MD8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$-nMyP8wB7UgoJb3FDcq3XcI-MD8;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHECK_INFO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$wHe1b0XchHn2zMcQ--RmTm2r5pw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$wHe1b0XchHn2zMcQ--RmTm2r5pw;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$zzlpnXH7wKBrJOB2ey1YkItUEAw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$zzlpnXH7wKBrJOB2ey1YkItUEAw;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$RHSdSz2f4IWNk8RtTW-Uu2fy700;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$RHSdSz2f4IWNk8RtTW-Uu2fy700;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHANGE_SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$TKLRH2So8u-gEbiKTm-fbt9jn58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$TKLRH2So8u-gEbiKTm-fbt9jn58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$2GXa1TGju4HRlEW3SUZgu6b1F8c;->INSTANCE:Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$ActionStateSet$3$2GXa1TGju4HRlEW3SUZgu6b1F8c;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1600(Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1600(Z)V

    return-void
.end method

.method static synthetic lambda$new$10(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1100(Z)V

    return-void
.end method

.method static synthetic lambda$new$11(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1000(Z)V

    return-void
.end method

.method static synthetic lambda$new$12(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1000(Z)V

    return-void
.end method

.method static synthetic lambda$new$13(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$900(Z)V

    return-void
.end method

.method static synthetic lambda$new$14(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$900(Z)V

    return-void
.end method

.method static synthetic lambda$new$15(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$800(Z)V

    return-void
.end method

.method static synthetic lambda$new$16(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$800(Z)V

    return-void
.end method

.method static synthetic lambda$new$17(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$700(Z)V

    return-void
.end method

.method static synthetic lambda$new$18(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$700(Z)V

    return-void
.end method

.method static synthetic lambda$new$19(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$600(Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1500(Z)V

    return-void
.end method

.method static synthetic lambda$new$20(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$600(Z)V

    return-void
.end method

.method static synthetic lambda$new$21(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$500(Z)V

    return-void
.end method

.method static synthetic lambda$new$22(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$400(Z)V

    return-void
.end method

.method static synthetic lambda$new$23(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$300(Z)V

    return-void
.end method

.method static synthetic lambda$new$24(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$200(Z)V

    return-void
.end method

.method static synthetic lambda$new$25(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$100(Z)V

    return-void
.end method

.method static synthetic lambda$new$26(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$100(Z)V

    return-void
.end method

.method static synthetic lambda$new$27(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$000(Z)V

    return-void
.end method

.method static synthetic lambda$new$28(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$000(Z)V

    return-void
.end method

.method static synthetic lambda$new$3(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1500(Z)V

    return-void
.end method

.method static synthetic lambda$new$4(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1400(Z)V

    return-void
.end method

.method static synthetic lambda$new$5(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1300(Z)V

    return-void
.end method

.method static synthetic lambda$new$6(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1300(Z)V

    return-void
.end method

.method static synthetic lambda$new$7(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1200(Z)V

    return-void
.end method

.method static synthetic lambda$new$8(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1200(Z)V

    return-void
.end method

.method static synthetic lambda$new$9(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1100(Z)V

    return-void
.end method

.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;
.super Ljava/util/EnumMap;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;",
        "Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "keyType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->DEFAULT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$ct4GoBc7WsukeIiRHoNp5noW4k8;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$ct4GoBc7WsukeIiRHoNp5noW4k8;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FINISH_ON_ERROR:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$EeLPhWr5oTyPFyiPn-bm_Cq0dWE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$EeLPhWr5oTyPFyiPn-bm_Cq0dWE;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHECK_INSIDE_POCKET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$j5xeLSWKH9ssQFyJMKzfV4IIiXc;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$j5xeLSWKH9ssQFyJMKzfV4IIiXc;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ERROR_RECORDING_START_FAIL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$dObqmgCR10L0SONKgNsRsXnl7nA;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$dObqmgCR10L0SONKgNsRsXnl7nA;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$l3fLweMdPVJ9uCU2Rk15yVuLItk;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$l3fLweMdPVJ9uCU2Rk15yVuLItk;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->GPS_EULA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$WtRMPYAjIVSif7lmgvAMToPK5V0;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$WtRMPYAjIVSif7lmgvAMToPK5V0;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$1pPTBEu-9Ih0bIfJNDixnJz4ZKM;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$1pPTBEu-9Ih0bIfJNDixnJz4ZKM;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ACTIVITY_NOT_FOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$Ro4dYhs5bJpumaa40-Pw7r2bRkE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$Ro4dYhs5bJpumaa40-Pw7r2bRkE;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->PLUGGED_LOW_BATTERY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$3cCG0UgRmja_0zhXFYSnLYu3oAs;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$3cCG0UgRmja_0zhXFYSnLYu3oAs;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CAMERA_BUSY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$7Bk6obDDJU0k_9wG-2oq0qqSI64;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$7Bk6obDDJU0k_9wG-2oq0qqSI64;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->REMOVE_MY_FILTER_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$6G6TQCJfkN16UmXnMrcl-MTxUUM;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$6G6TQCJfkN16UmXnMrcl-MTxUUM;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$bycZpxcCvcclzz0Q3IPgyfecDEU;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$bycZpxcCvcclzz0Q3IPgyfecDEU;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->DELETE_IMAGE_FROM_MINIVIEWER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$GbxWxUYrHQ3U5uIifTu4YkSx4Pc;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$GbxWxUYrHQ3U5uIifTu4YkSx4Pc;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_SYSTEM_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$tdPcAgU7NCc5lhxDQl7eYhgL9E8;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$tdPcAgU7NCc5lhxDQl7eYhgL9E8;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$z02OTrlE3AinDjAL5OxDy2BZAVk;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$z02OTrlE3AinDjAL5OxDy2BZAVk;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->OPTIONAL_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$6kF0_aJ2lnN02gS7Fi__vZOpoMo;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$6kF0_aJ2lnN02gS7Fi__vZOpoMo;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$OzXOcm4qY6yLCWbEUSjDGXJEUas;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$OzXOcm4qY6yLCWbEUSjDGXJEUas;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$ku0dWLh47ZZQpDKqjSHht8GI2MQ;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$ku0dWLh47ZZQpDKqjSHht8GI2MQ;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$l_-AnJsrFkQtRZpC7Nu0Popfx08;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$l_-AnJsrFkQtRZpC7Nu0Popfx08;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->TALK_BACK_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$ykI7CWnlkDkWCeQn-zXAHdS0tzY;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$ykI7CWnlkDkWCeQn-zXAHdS0tzY;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LIGHT_ROOM_PRESET_HELP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$LWQqgHyfZLtxRP1DG_bSa8StdN0;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$LWQqgHyfZLtxRP1DG_bSa8StdN0;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$coMFciNlcRRhUPXdrqqxQJKFphE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$coMFciNlcRRhUPXdrqqxQJKFphE;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$yftLeEPoKxdYOSFvnoBmODeEqvQ;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$yftLeEPoKxdYOSFvnoBmODeEqvQ;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$kaMBPcapjdANOUd5yvo_RanhqLY;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$kaMBPcapjdANOUd5yvo_RanhqLY;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$jKTH3sYqmmAdUtNjYxiez3CQuYU;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$jKTH3sYqmmAdUtNjYxiez3CQuYU;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$bXUwK9_rZyCXgHKf3a7-7IVz2TE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$bXUwK9_rZyCXgHKf3a7-7IVz2TE;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->OVERHEAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$X2l7iEdc0P3LRfE3Jg0s7qNOij4;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$X2l7iEdc0P3LRfE3Jg0s7qNOij4;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->BIXBY_VISION_ENABLE_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$HCT9Ac3oSTM0PiAjh2OTJfPZFsY;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$HCT9Ac3oSTM0PiAjh2OTJfPZFsY;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->AR_EMOJI_ENABLE_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$-xxivGK2_U8SbDO8S2-2VPgQOpI;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$-xxivGK2_U8SbDO8S2-2VPgQOpI;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->SMART_VIEW_NOT_SUPPORTED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$EiFs1b-HJCX2YS7719kFBXLXZM4;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$EiFs1b-HJCX2YS7719kFBXLXZM4;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$1$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$10$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$11$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$12$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    new-instance v5, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$13$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    new-instance v5, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$14$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    new-instance v5, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$15$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$16$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1300(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$17$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1200(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$18$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$19$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1000(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$2$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$20$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$900(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$21$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$800(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$22$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$700(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$23$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$600(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$24$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$25$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$400(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$26$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$300(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$27$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$200(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$28$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$29$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$000(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$3$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$4$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$5$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$6$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$7$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$8$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v2, 0x0

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$9$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

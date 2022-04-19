.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;
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
        "Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Ljava/lang/Class;)V
    .locals 7
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->DEFAULT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const/4 v0, -0x1

    const v1, 0x7f120371

    invoke-direct {p2, v0, v0, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FINISH_ON_ERROR:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    invoke-direct {p2, v0, v0, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHECK_INSIDE_POCKET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v2, 0x7f120100

    const v3, 0x7f1203d7

    invoke-direct {p2, v2, v3, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ERROR_RECORDING_START_FAIL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v2, 0x7f1204e7

    const v3, 0x7f1203e0

    invoke-direct {p2, v2, v3, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v3, 0x7f120214

    const v4, 0x7f120213

    const v5, 0x7f120227

    invoke-direct {p2, v3, v4, v5, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->GPS_EULA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v4, 0x7f12010a

    const v6, 0x7f120328

    invoke-direct {p2, v4, v6, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v4, 0x7f120195

    invoke-direct {p2, v4, v0, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ACTIVITY_NOT_FOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v4, 0x7f12018f

    invoke-direct {p2, v2, v4, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->PLUGGED_LOW_BATTERY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    invoke-direct {p2, v0, v0, v5, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CAMERA_BUSY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v2, 0x7f120204

    invoke-direct {p2, v3, v2, v5, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->REMOVE_MY_FILTER_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v2, 0x7f120242

    const v3, 0x7f12020c

    invoke-direct {p2, v0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    invoke-direct {p2, v0, v0, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->DELETE_IMAGE_FROM_MINIVIEWER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v1, 0x7f120243

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_SYSTEM_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const/4 v1, -0x1

    const v2, 0x7f120312

    const v3, 0x7f12028c

    const v4, 0x7f1204c9

    const v5, 0x7f12036f

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    const v2, 0x7f12019f

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->OPTIONAL_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;-><init>(IIIII)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

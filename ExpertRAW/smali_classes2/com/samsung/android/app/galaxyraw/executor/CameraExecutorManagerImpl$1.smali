.class Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;
.super Ljava/util/Hashtable;
.source "CameraExecutorManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/util/Pair;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Landroid/util/Pair;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/util/Pair;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_FULL:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v1, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

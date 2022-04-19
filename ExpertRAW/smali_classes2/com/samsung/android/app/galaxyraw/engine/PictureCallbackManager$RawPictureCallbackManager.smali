.class Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawPictureCallbackManager"
.end annotation


# instance fields
.field private mDateTaken:J

.field private mIsPictureCallbackReceived:Z

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsPictureCallbackReceived:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->isRawPictureCallbackReceived()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->getRawPictureDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->reset()V

    return-void
.end method

.method private getRawPictureDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    return-wide v0
.end method

.method private isRawPictureCallbackReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsPictureCallbackReceived:Z

    return p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsPictureCallbackReceived:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    return-void
.end method


# virtual methods
.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "info",
            "camDevice"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    const-string v0, "PictureCallbackManager"

    if-eq p2, p3, :cond_0

    const-string p0, "RawPictureCallback.onPictureTaken : Returned because current capture state is not CAPTURING."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p2, "RawPictureCallback.onPictureTaken"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsPictureCallbackReceived:Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$700(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)J

    move-result-wide p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getCurrentTimeInMillis()J

    move-result-wide p2

    :goto_0
    iput-wide p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object p2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;JLcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$800(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    :cond_2
    return-void
.end method

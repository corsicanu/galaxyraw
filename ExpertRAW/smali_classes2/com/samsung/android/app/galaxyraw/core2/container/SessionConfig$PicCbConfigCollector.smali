.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PicCbConfigCollector"
.end annotation


# instance fields
.field private final compPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

.field private final rawPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

.field private final unCompPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "compPicCbConfig",
            "unCompPicCbConfig",
            "rawPicCbConfig"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->compPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->unCompPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->rawPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->compPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->unCompPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->rawPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method


# virtual methods
.method public getPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picFormat"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$container$PictureDataInfo$PicFormat:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->access$2400()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "getPicCbConfig - picFormat is not valid"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->rawPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->unCompPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->compPicCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

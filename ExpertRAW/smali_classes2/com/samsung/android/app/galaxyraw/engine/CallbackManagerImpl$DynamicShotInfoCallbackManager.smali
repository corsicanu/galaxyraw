.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicShotInfoCallbackManager"
.end annotation


# instance fields
.field private mDynamicShotInfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicShotInfoListForCapture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoList:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoListForCapture:Ljava/util/Map;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoListForCapture:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method getDynamicShotInfoListForCapture()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoListForCapture:Ljava/util/Map;

    return-object p0
.end method

.method public onDynamicShotInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "dynamicShotInfo",
            "camDevice"
        }
    .end annotation

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method updateDynamicShotInfoListForCapture()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoListForCapture:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4200(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;-><init>(IIIJ)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoListForCapture:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

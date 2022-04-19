.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LensDirtyDetectCallbackManager"
.end annotation


# instance fields
.field private mLensDirtyDetectListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->mLensDirtyDetectListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->setLensDirtyDetectListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;)V

    return-void
.end method

.method private setLensDirtyDetectListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->mLensDirtyDetectListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLensDirtyDetectChanged$0$CallbackManagerImpl$LensDirtyDetectCallbackManager(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->mLensDirtyDetectListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->mLensDirtyDetectListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;->onLensDirtyDetected()V

    :cond_0
    return-void
.end method

.method public onLensDirtyDetectChanged(Ljava/lang/Long;Ljava/lang/Boolean;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "lensDirtyDetect",
            "camDevice"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLensDirtyDetectChanged : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CallbackManager"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$mW3gYA1GEV1Whl0FXhhgjze4LnM;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$mW3gYA1GEV1Whl0FXhhgjze4LnM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;Ljava/lang/Boolean;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

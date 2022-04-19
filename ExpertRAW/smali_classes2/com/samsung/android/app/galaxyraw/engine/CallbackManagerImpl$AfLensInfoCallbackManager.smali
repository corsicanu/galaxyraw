.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfLensInfoCallbackManager"
.end annotation


# instance fields
.field private mAfLensInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;->mAfLensInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;->setLensInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;)V

    return-void
.end method

.method private setLensInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;->mAfLensInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLensInfoChanged$0$CallbackManagerImpl$AfLensInfoCallbackManager(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;->mAfLensInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;->onAfLensPositionChanged(I)V

    :cond_0
    return-void
.end method

.method public onLensInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "lensInfo",
            "camDevice"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->getLensCurrentPosition()Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AfLensInfoCallbackManager$4TOrQ2CKfDyDnfYlVsb66DMZuTM;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AfLensInfoCallbackManager$4TOrQ2CKfDyDnfYlVsb66DMZuTM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;Ljava/lang/Integer;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

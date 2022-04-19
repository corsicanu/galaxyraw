.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessValueCallbackManager"
.end annotation


# instance fields
.field private mBrightnessValue:I

.field private mBrightnessValueForCapture:I

.field private mBrightnessValueListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueForCapture:I

    return-void
.end method


# virtual methods
.method getBrightnessValueForCapture()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueForCapture:I

    return p0
.end method

.method public synthetic lambda$onBrightnessValueChanged$0$CallbackManagerImpl$BrightnessValueCallbackManager(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onBrightnessValueChanged(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;->onBrightnessValueChanged(I)V

    :cond_1
    return-void
.end method

.method public onBrightnessValueChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "brightnessValue",
            "camDevice"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValue:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValue:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$ZhYRw3BBoy_InlAOJyHfIxzanP4;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$ZhYRw3BBoy_InlAOJyHfIxzanP4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;Ljava/lang/Integer;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setBrightnessValueListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;

    return-void
.end method

.method updateBrightnessValueForCapture()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueForCapture:I

    return v0
.end method

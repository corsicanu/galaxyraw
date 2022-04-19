.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$ZhYRw3BBoy_InlAOJyHfIxzanP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$ZhYRw3BBoy_InlAOJyHfIxzanP4;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$ZhYRw3BBoy_InlAOJyHfIxzanP4;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$ZhYRw3BBoy_InlAOJyHfIxzanP4;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$ZhYRw3BBoy_InlAOJyHfIxzanP4;->f$1:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->lambda$onBrightnessValueChanged$0$CallbackManagerImpl$BrightnessValueCallbackManager(Ljava/lang/Integer;)V

    return-void
.end method

.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$mW3gYA1GEV1Whl0FXhhgjze4LnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$mW3gYA1GEV1Whl0FXhhgjze4LnM;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$mW3gYA1GEV1Whl0FXhhgjze4LnM;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$mW3gYA1GEV1Whl0FXhhgjze4LnM;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$mW3gYA1GEV1Whl0FXhhgjze4LnM;->f$1:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->lambda$onLensDirtyDetectChanged$0$CallbackManagerImpl$LensDirtyDetectCallbackManager(Ljava/lang/Boolean;)V

    return-void
.end method

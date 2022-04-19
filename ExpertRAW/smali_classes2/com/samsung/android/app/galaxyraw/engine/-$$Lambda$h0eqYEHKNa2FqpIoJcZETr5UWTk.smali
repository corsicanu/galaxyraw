.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$h0eqYEHKNa2FqpIoJcZETr5UWTk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$h0eqYEHKNa2FqpIoJcZETr5UWTk;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$h0eqYEHKNa2FqpIoJcZETr5UWTk;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->handleError()V

    return-void
.end method

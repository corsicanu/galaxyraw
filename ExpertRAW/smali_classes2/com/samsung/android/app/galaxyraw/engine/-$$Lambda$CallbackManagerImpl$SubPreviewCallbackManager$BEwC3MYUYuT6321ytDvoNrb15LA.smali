.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;->f$1:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;->f$1:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->lambda$onPreviewFrame$0$CallbackManagerImpl$SubPreviewCallbackManager(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V

    return-void
.end method

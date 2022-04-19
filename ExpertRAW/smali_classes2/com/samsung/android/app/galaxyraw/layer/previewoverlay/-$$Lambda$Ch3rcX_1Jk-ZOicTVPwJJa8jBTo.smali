.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$Ch3rcX_1Jk-ZOicTVPwJJa8jBTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$Ch3rcX_1Jk-ZOicTVPwJJa8jBTo;->f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$Ch3rcX_1Jk-ZOicTVPwJJa8jBTo;->f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->hidePalmRect()V

    return-void
.end method

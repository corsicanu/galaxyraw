.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;->f$2:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;->f$1:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$-B9V_ZypTzLFDHJUYsuB25ONBRs;->f$2:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->lambda$takePreviewSurfaceSnapshot$1$PreviewSurfaceManager(Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/view/Surface;)V

    return-void
.end method

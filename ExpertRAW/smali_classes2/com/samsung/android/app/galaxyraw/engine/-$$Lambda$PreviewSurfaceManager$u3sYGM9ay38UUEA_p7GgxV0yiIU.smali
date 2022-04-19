.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$u3sYGM9ay38UUEA_p7GgxV0yiIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$u3sYGM9ay38UUEA_p7GgxV0yiIU;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$u3sYGM9ay38UUEA_p7GgxV0yiIU;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$u3sYGM9ay38UUEA_p7GgxV0yiIU;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PreviewSurfaceManager$u3sYGM9ay38UUEA_p7GgxV0yiIU;->f$1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->lambda$takePreviewSurfaceSnapshot$0$PreviewSurfaceManager(Landroid/graphics/Bitmap;I)V

    return-void
.end method

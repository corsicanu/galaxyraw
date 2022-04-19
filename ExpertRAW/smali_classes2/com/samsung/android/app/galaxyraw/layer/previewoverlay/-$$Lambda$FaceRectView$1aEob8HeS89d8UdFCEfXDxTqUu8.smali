.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$1aEob8HeS89d8UdFCEfXDxTqUu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$1aEob8HeS89d8UdFCEfXDxTqUu8;->f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$1aEob8HeS89d8UdFCEfXDxTqUu8;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$1aEob8HeS89d8UdFCEfXDxTqUu8;->f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$1aEob8HeS89d8UdFCEfXDxTqUu8;->f$1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->lambda$hideFaceRect$1$FaceRectView(Landroid/widget/ImageView;)V

    return-void
.end method

.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$4dEcpcp4-dLvzRGrPTkw-3JwHP0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Landroid/graphics/Rect;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>([Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$4dEcpcp4-dLvzRGrPTkw-3JwHP0;->f$0:[Landroid/graphics/Rect;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$4dEcpcp4-dLvzRGrPTkw-3JwHP0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$4dEcpcp4-dLvzRGrPTkw-3JwHP0;->f$0:[Landroid/graphics/Rect;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$4dEcpcp4-dLvzRGrPTkw-3JwHP0;->f$1:Z

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->lambda$onFaceDetection$0([Landroid/graphics/Rect;ZLcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;)V

    return-void
.end method

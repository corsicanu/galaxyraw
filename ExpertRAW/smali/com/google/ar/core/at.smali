.class final synthetic Lcom/google/ar/core/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final b:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/at;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p2, p0, Lcom/google/ar/core/at;->b:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ar/core/at;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object p0, p0, Lcom/google/ar/core/at;->b:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

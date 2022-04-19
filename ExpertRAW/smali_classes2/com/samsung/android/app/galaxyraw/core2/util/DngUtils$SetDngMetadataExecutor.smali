.class interface abstract Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$SetDngMetadataExecutor;
.super Ljava/lang/Object;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SetDngMetadataExecutor"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract execute(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "camCapability",
            "dngMetadata"
        }
    .end annotation
.end method

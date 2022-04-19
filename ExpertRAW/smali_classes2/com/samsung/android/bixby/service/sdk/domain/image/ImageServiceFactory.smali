.class public final Lcom/samsung/android/bixby/service/sdk/domain/image/ImageServiceFactory;
.super Ljava/lang/Object;
.source "ImageServiceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImageBoundaryDetector()Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;

    move-result-object v0

    return-object v0
.end method

.method public static createImageScriptDetector()Lcom/samsung/android/bixby/service/sdk/domain/image/scriptdetector/ImageScriptDetector;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/image/scriptdetector/ImageScriptDetector;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/image/scriptdetector/ImageScriptDetector;

    move-result-object v0

    return-object v0
.end method

.method public static createImageTextRecognizer()Lcom/samsung/android/bixby/service/sdk/domain/image/textrecognizer/ImageTextRecognizer;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/image/textrecognizer/ImageTextRecognizer;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/image/textrecognizer/ImageTextRecognizer;

    move-result-object v0

    return-object v0
.end method

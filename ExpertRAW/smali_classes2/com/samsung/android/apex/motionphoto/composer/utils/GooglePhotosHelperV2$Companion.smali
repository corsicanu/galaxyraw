.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG$motionphoto_composer_v3_0_42_release",
        "()Ljava/lang/String;",
        "create",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;",
        "fd",
        "Ljava/io/FileDescriptor;",
        "motionphoto_composer_v3.0.42_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/io/FileDescriptor;)Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;
    .locals 1

    const-string p0, "fd"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;

    invoke-static {p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->access$isJpeg(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;-><init>(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getTAG$motionphoto_composer_v3_0_42_release()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

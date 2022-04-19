.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGooglePhotosHelperV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GooglePhotosHelperV2.kt\ncom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2\n*L\n1#1,313:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0005J\t\u0010\u0007\u001a\u00020\u0008H\u0096\u0001J\t\u0010\t\u001a\u00020\u0008H\u0096\u0001J\u0011\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0001J\u000e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eJ1\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0096\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;",
        "handler",
        "(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;)V",
        "hasHeic",
        "",
        "hasJpeg",
        "removeXmp",
        "",
        "reserveXmp",
        "reservedSize",
        "",
        "setXmpReserver",
        "reserver",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;",
        "writeXmp",
        "primary_videoLength",
        "",
        "primary_videoOffset",
        "second_videoLength",
        "second_videoOffset",
        "duration",
        "Companion",
        "motionphoto_composer_v3.0.42_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "GooglePhotosHelperV2"

    :goto_0
    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;-><init>(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final hasHeic()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    instance-of p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;

    return p0
.end method

.method public final hasJpeg()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    instance-of p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;

    return p0
.end method

.method public removeXmp()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    invoke-interface {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;->removeXmp()V

    return-void
.end method

.method public reserveXmp()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    invoke-interface {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;->reserveXmp()V

    return-void
.end method

.method public reserveXmp(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    invoke-interface {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;->reserveXmp(I)V

    return-void
.end method

.method public final setXmpReserver(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;)V
    .locals 1

    const-string v0, "reserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    instance-of v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->setReserver(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;)V

    return-void

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.samsung.android.apex.motionphoto.composer.utils.HeicXMPHandler"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only support for heic"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public writeXmp(JJJJJ)V
    .locals 11

    move-object v0, p0

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->handler:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;->writeXmp(JJJJJ)V

    return-void
.end method

.class public Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;
.super Ljava/lang/Object;
.source "SemApexRecordingProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

.field private mNativeContext:J

.field private mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_init()V

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "preview"

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->mToken:I

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;->PREVIEW:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;

    if-ne p2, v0, :cond_0

    const-string p2, "preview"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;->VIDEOOUT:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;

    if-ne p2, v0, :cond_1

    const-string p2, "video-out"

    goto :goto_0

    :cond_1
    const-string p2, "surface"

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->mToken:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "preview"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->mToken:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;ILcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;->PREVIEW:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;

    if-ne p3, v0, :cond_0

    const-string p3, "preview"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;->VIDEOOUT:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy$BufferMode;

    if-ne p3, v0, :cond_1

    const-string p3, "video-out"

    goto :goto_0

    :cond_1
    const-string p3, "surface"

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->mToken:I

    return-void
.end method

.method private final native native_connect()I
.end method

.method private final native native_dequeBuffer()I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method private static final native native_init()V
.end method

.method private final native native_queueBuffer(IJI)V
.end method

.method private final native native_queueBuffer2(Ljava/nio/ByteBuffer;IIJ)I
.end method

.method private final native native_setup(Ljava/lang/Object;ILjava/lang/String;)I
.end method


# virtual methods
.method public connect()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_connect()I

    move-result p0

    return p0
.end method

.method public dequeuBuffer()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_dequeBuffer()I

    move-result p0

    return p0
.end method

.method public getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public queueBuffer(IIJ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_queueBuffer(IJI)V

    return-void
.end method

.method public queueBuffer(Ljava/nio/ByteBuffer;IJ)Z
    .locals 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_queueBuffer2(Ljava/nio/ByteBuffer;IIJ)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->native_finalize()V

    return-void
.end method

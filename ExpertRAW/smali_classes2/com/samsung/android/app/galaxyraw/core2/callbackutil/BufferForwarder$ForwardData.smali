.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;
.super Ljava/lang/Object;
.source "BufferForwarder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData$Usage;
    }
.end annotation


# static fields
.field public static final USAGE_FORWARD:I = 0x0

.field public static final USAGE_NOTIFY:I = 0x1


# instance fields
.field public camDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

.field public captureResult:Landroid/hardware/camera2/CaptureResult;

.field public format:I

.field public forwardBuffer:Ljava/nio/ByteBuffer;

.field private isFullData:Z

.field public notifyObject:Ljava/lang/Object;

.field public size:Landroid/util/Size;

.field public timestamp:J

.field public final usage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->usage:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyObject"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->usage:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->notifyObject:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->isFullData:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized isFullData()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->isFullData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFullData(Ljava/nio/ByteBuffer;Landroid/util/Size;IJLandroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "forwardBuffer",
            "size",
            "format",
            "timestamp",
            "captureResult",
            "camDevice"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->forwardBuffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->size:Landroid/util/Size;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->format:I

    iput-wide p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->timestamp:J

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->captureResult:Landroid/hardware/camera2/CaptureResult;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->camDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->isFullData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

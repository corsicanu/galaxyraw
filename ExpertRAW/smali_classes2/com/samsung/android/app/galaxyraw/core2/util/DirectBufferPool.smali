.class public Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;
.super Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;
.source "DirectBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "corePoolSize",
            "maxPoolSize"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic allocBuffer(I)Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bufferSize"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->allocBuffer(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected allocBuffer(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSize"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected bridge synthetic releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buffer"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V

    return-void
.end method

.method protected releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->release()V

    return-void
.end method

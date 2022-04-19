.class public Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
.super Ljava/lang/Object;
.source "BufferDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferSlot"
.end annotation


# instance fields
.field private final mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

.field private final mId:J


# direct methods
.method private constructor <init>(JLcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "buffer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;->mId:J

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    return-void
.end method

.method synthetic constructor <init>(JLcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;-><init>(JLcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    return-void
.end method


# virtual methods
.method public getBuffer()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;->mBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;->mId:J

    return-wide v0
.end method

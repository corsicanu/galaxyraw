.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;
.super Ljava/lang/Object;
.source "SEFParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataPosition"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;",
        "",
        "offset",
        "",
        "length",
        "(JJ)V",
        "getLength",
        "()J",
        "getOffset",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "motionphoto_composer_v3.0.42_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final length:J

.field private final offset:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->offset:J

    iput-wide p3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->length:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;JJILjava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->offset:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->length:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->copy(JJ)Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->offset:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->length:J

    return-wide v0
.end method

.method public final copy(JJ)Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;
    .locals 0

    new-instance p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;-><init>(JJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    iget-wide v3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->offset:J

    iget-wide v5, p1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->offset:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->length:J

    iget-wide p0, p1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->length:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->length:J

    return-wide v0
.end method

.method public final getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->offset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->offset:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->length:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataPosition(offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final enum Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;
.super Ljava/lang/Enum;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum HIGH:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum LOW:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum MID:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum VERY_HIGH:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum VERY_LOW:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;


# instance fields
.field private final bufferPoolSize:I

.field private final cutOffThreshold:I

.field private final id:I

.field private final maxRawBufferNum:I

.field private final maxYuvBufferNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v8, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    const-string v1, "VERY_LOW"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->VERY_LOW:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    const-string v10, "LOW"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x12c

    const/4 v14, 0x5

    const/4 v15, 0x7

    const/16 v16, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->LOW:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    const-string v18, "MID"

    const/16 v19, 0x2

    const/16 v20, 0x2

    const/16 v21, 0x190

    const/16 v22, 0x5

    const/16 v23, 0x7

    const/16 v24, 0xa

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->MID:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    const-string v10, "HIGH"

    const/4 v11, 0x3

    const/4 v12, 0x3

    const/16 v13, 0x320

    const/4 v14, 0x7

    const/16 v15, 0x9

    const/16 v16, 0xc

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->HIGH:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    const-string v18, "VERY_HIGH"

    const/16 v19, 0x4

    const/16 v20, 0x4

    const/16 v21, 0x4b0

    const/16 v22, 0x7

    const/16 v23, 0x9

    const/16 v24, 0x10

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->VERY_HIGH:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "id",
            "cutOffThreshold",
            "maxYuvBufferNum",
            "maxRawBufferNum",
            "bufferPoolSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->id:I

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->cutOffThreshold:I

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->maxYuvBufferNum:I

    iput p6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->maxRawBufferNum:I

    iput p7, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->bufferPoolSize:I

    return-void
.end method

.method static synthetic lambda$valueOf$0(ILcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->getId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$valueOf$1(I)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memory level is not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(I)Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->values()[Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$MemoryUtils$MemoryLevel$MDYxoH1qE1l9bnKTBrqch-af5HU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$MemoryUtils$MemoryLevel$MDYxoH1qE1l9bnKTBrqch-af5HU;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$MemoryUtils$MemoryLevel$uhoK8fkySzZaPVIv284ouIGFQUo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$MemoryUtils$MemoryLevel$uhoK8fkySzZaPVIv284ouIGFQUo;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    return-object v0
.end method


# virtual methods
.method public getBufferPoolSize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->bufferPoolSize:I

    return p0
.end method

.method public getCutOffThreshold()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->cutOffThreshold:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->id:I

    return p0
.end method

.method public getMaxRawBufferNum()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->maxRawBufferNum:I

    return p0
.end method

.method public getMaxYuvBufferNum()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->maxYuvBufferNum:I

    return p0
.end method

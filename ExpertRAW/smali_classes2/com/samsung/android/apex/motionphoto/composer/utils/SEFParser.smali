.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;
.super Ljava/lang/Object;
.source "SEFParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSEFParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SEFParser.kt\ncom/samsung/android/apex/motionphoto/composer/utils/SEFParser\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1587#2,2:146\n*E\n*S KotlinDebug\n*F\n+ 1 SEFParser.kt\ncom/samsung/android/apex/motionphoto/composer/utils/SEFParser\n*L\n79#1,2:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u0001:\u0004\u0019\u001a\u001b\u001cB\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\nJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0014\u001a\u00020\nJ\u0006\u0010\u0016\u001a\u00020\rJ\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u0003R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;",
        "",
        "fd",
        "Ljava/io/FileDescriptor;",
        "(Ljava/io/FileDescriptor;)V",
        "dataInfos",
        "",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;",
        "dataPositions",
        "",
        "",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;",
        "fileSize",
        "",
        "numOfData",
        "",
        "sefHeadOffset",
        "versionCode",
        "getData",
        "Ljava/nio/ByteBuffer;",
        "key",
        "getDataPosition",
        "getFileSize",
        "parse",
        "",
        "Companion",
        "DataInfo",
        "DataPosition",
        "Tag",
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
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

.field private static final SEF_FORMAT_VERSION:I = 0x6a

.field private static final SEF_SDR_DEFAULT_SIZE:I = 0xc

.field private static final SEF_SIGNATURE_HEAD:Ljava/lang/String; = "SEFH"

.field private static final SEF_SIGNATURE_TAIL:Ljava/lang/String; = "SEFT"

.field private static final TAG:Ljava/lang/String;

.field private static final payload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final dataPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;",
            ">;"
        }
    .end annotation
.end field

.field private fd:Ljava/io/FileDescriptor;

.field private fileSize:J

.field private numOfData:I

.field private sefHeadOffset:J

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SEFParser"

    :goto_0
    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SIGNATURE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SEF_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->VERSION:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->NUM_OF_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v0, v1

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SUB_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_TYPE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->KEY_LENGTH:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->payload:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;-><init>(Ljava/io/FileDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->parse(Ljava/io/FileDescriptor;)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataInfos:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataPositions:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/FileDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    check-cast p1, Ljava/io/FileDescriptor;

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static final synthetic access$getPayload$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->payload:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataPositions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v1, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object p0, v1

    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->getOffset()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->getLength()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getDataPosition(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataPositions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    return-object p0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    return-wide v0
.end method

.method public final parse(Ljava/io/FileDescriptor;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    const-string v3, "fd"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fd:Ljava/io/FileDescriptor;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v3, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/io/FileInputStream;

    const/16 v5, 0x400

    new-array v5, v5, [B

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->payload:Ljava/util/Map;

    sget-object v7, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SIGNATURE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v6, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    iget-wide v9, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    int-to-long v11, v7

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object v8, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SIGNATURE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v6, v8}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v8}, Ljava/io/FileInputStream;->read([BII)I

    const-string v8, "SEFT"

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "This file was not SEF format"

    if-eqz v8, :cond_5

    :try_start_1
    sget-object v8, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SEF_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v6, v8}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    iget-wide v11, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    int-to-long v13, v7

    sub-long/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object v8, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    sget-object v11, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SEF_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v8, v4, v5, v11}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v11

    add-int/2addr v7, v11

    iget-wide v11, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    int-to-long v13, v7

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->sefHeadOffset:J

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    iget-wide v11, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->sefHeadOffset:J

    invoke-virtual {v7, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object v7, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SIGNATURE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v6, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v9, v6}, Ljava/io/FileInputStream;->read([BII)I

    const-string v6, "SEFH"

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->VERSION:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v8, v4, v5, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->versionCode:I

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->NUM_OF_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v8, v4, v5, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->numOfData:I

    if-ltz v2, :cond_0

    move v6, v9

    :goto_0
    iget-object v7, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataInfos:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;

    sget-object v10, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    sget-object v11, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SUB_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v10, v4, v5, v11}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v11

    int-to-short v11, v11

    sget-object v12, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_TYPE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v10, v4, v5, v12}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v12

    int-to-short v12, v12

    sget-object v13, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v10, v4, v5, v13}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v13

    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_LENGTH:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v10, v4, v5, v14}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v10

    invoke-direct {v8, v11, v12, v13, v10}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;-><init>(SSII)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v6, v2, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataInfos:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    iget-wide v10, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->sefHeadOffset:J

    invoke-virtual {v6}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getOffset()I

    move-result v8

    int-to-long v12, v8

    sub-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object v7, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    sget-object v8, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SUB_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v7, v4, v5, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    sget-object v8, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_TYPE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v7, v4, v5, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {v6}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getType()S

    move-result v10

    if-ne v8, v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    move v10, v9

    :goto_2
    if-eqz v10, :cond_2

    sget-object v8, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->KEY_LENGTH:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v7, v4, v5, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v7

    invoke-virtual {v4, v5, v9, v7}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v5}, [B->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataPositions:Ljava/util/Map;

    new-instance v10, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v11

    invoke-virtual {v6}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getLength()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v15

    move-object/from16 v17, v10

    iget-wide v9, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->sefHeadOffset:J

    invoke-virtual {v6}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getOffset()I

    move-result v6

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    int-to-long v4, v6

    sub-long/2addr v9, v4

    sub-long/2addr v15, v9

    sub-long/2addr v13, v15

    move-object/from16 v4, v17

    invoke-direct {v4, v11, v12, v13, v14}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;-><init>(JJ)V

    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type mismatch between info("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getType()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") & data("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

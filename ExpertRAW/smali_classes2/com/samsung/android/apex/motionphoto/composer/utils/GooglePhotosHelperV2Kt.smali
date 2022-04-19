.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGooglePhotosHelperV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GooglePhotosHelperV2.kt\ncom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt\n*L\n1#1,313:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aB\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008H\u0002\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "XMP_RESERVED_SIZE",
        "",
        "getXMPMeta",
        "Lcom/adobe/xmp/XMPMeta;",
        "primaryType",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;",
        "padding",
        "primaryVideoLength",
        "",
        "primaryVideoOffset",
        "secondVideoLength",
        "secondVideoOffset",
        "duration",
        "isJpeg",
        "",
        "fd",
        "Ljava/io/FileDescriptor;",
        "motionphoto_composer_v3.0.42_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final XMP_RESERVED_SIZE:I = 0x500


# direct methods
.method public static final synthetic access$getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lcom/adobe/xmp/XMPMeta;
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isJpeg(Ljava/io/FileDescriptor;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->isJpeg(Ljava/io/FileDescriptor;)Z

    move-result p0

    return p0
.end method

.method private static final getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lcom/adobe/xmp/XMPMeta;
    .locals 16

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;->getTAG$motionphoto_composer_v3_0_42_release()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primary-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", padding="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", primary-len="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", primary-offset="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v4, p4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "second-len="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v4, p6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", second-offset="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v6, p8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", duration="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v6, p10

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v8, "GCamera"

    invoke-interface {v0, v1, v8}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "http://ns.google.com/photos/1.0/container/"

    const-string v9, "Container"

    invoke-interface {v0, v8, v9}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v15, "http://ns.google.com/photos/1.0/container/item/"

    const-string v9, "Item"

    invoke-interface {v0, v15, v9}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "MotionPhoto"

    invoke-interface {v0, v1, v10, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "MotionPhotoVersion"

    invoke-interface {v0, v1, v10, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "MotionPhotoPresentationTimestampUs"

    invoke-interface {v0, v1, v7, v6}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v1, v14}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v1, v14}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const-string v11, "Directory"

    const/4 v13, 0x0

    move-object v9, v0

    move-object v10, v8

    move v6, v14

    move-object v14, v1

    invoke-interface/range {v9 .. v14}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v1, v6}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v1, v6}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const-string v11, "Directory"

    invoke-interface/range {v9 .. v14}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v1, "Directory"

    invoke-static {v1, v6}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Container:Item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v13, "Mime"

    move-object v11, v6

    move-object v12, v15

    invoke-interface/range {v9 .. v14}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Semantic"

    const-string v14, "Primary"

    invoke-interface/range {v9 .. v14}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Length"

    const-string v14, "0"

    invoke-interface/range {v9 .. v14}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Padding"

    move-object/from16 p0, v0

    move-object/from16 p1, v8

    move-object/from16 p2, v6

    move-object/from16 p3, v15

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->MP4:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mime"

    move-object/from16 p2, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Semantic"

    const-string v3, "MotionPhoto"

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    invoke-interface/range {p0 .. p5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Length"

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Padding"

    const-string v3, "0"

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    invoke-interface/range {p0 .. p5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "XMPMetaFactory.create().\u2026Ns, \"Padding\", \"0\")\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic getXMPMeta$default(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJILjava/lang/Object;)Lcom/adobe/xmp/XMPMeta;
    .locals 14

    and-int/lit8 v0, p12, 0x40

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    move-wide v12, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p10

    :goto_0
    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v2 .. v13}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method private static final isJpeg(Ljava/io/FileDescriptor;)Z
    .locals 6

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v0, Ljava/io/Closeable;

    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v2, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/FileInputStream;->read([BII)I

    aget-byte v1, v3, v4

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, v3, v5

    and-int/2addr v1, v2

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_0

    move v4, v5

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v4

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

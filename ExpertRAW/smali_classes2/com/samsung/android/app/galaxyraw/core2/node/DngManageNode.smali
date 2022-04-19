.class public Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;
.super Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.source "DngManageNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;
    }
.end annotation


# static fields
.field private static final DNG_MANAGE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static final NATIVE_COMMAND_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_RAW_DATA_FORMAT:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_WITHOUT_THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_WITH_JPEG:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_WITH_THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

.field private mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field private final mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

.field private mThumbnailBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->DNG_MANAGE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$1;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/16 v3, 0x64

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_WITH_THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$2;

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    aput-object v3, v2, v4

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    aput-object v3, v2, v5

    const/16 v3, 0x65

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_WITHOUT_THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$3;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    const/16 v3, 0x66

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_SET_RAW_DATA_FORMAT:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$4;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    aput-object v2, v1, v4

    const-class v2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    aput-object v2, v1, v5

    const-class v2, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    aput-object v2, v1, v6

    const/16 v2, 0x67

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_WITH_JPEG:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$5;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v1, v4

    const/16 v2, 0x68

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$5;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->DNG_MANAGE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/16 v1, 0xb4

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mThumbnailBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized loadDngExtraMetadata([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dngExtraMetadata"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->dng_extra_metadata:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "loadDngExtraMetadata fail - dngMetaData is not loaded"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadDngMetadata(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/util/Size;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "capability",
            "pictureSize"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_0
    const-string v3, "captureResult"

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "capability"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "pictureSize"

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;

    move-result-object v5

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoWhiteLevel()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoWhiteLevel()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoWhiteLevel()Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorColorTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorColorTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorCalibrationTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorCalibrationTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorReferenceIlluminant1()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorReferenceIlluminant2()Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorForwardMatrix1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorForwardMatrix2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoColorFilterArrangement()Ljava/lang/Integer;

    move-result-object v15

    move-object v4, v3

    invoke-direct/range {v4 .. v15}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;-><init>(Landroid/hardware/camera2/params/BlackLevelPattern;Ljava/lang/Integer;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/lang/Integer;Ljava/lang/Byte;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/lang/Integer;)V

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->getDngMetadataFromCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Landroid/util/Size;)Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processPicture(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picture",
            "bundle"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->DNG_MANAGE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "processPicture E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v1, "DNG Creation"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    const-string p1, "processPicture X: failed because dngMetaData is null"

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;->onError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPicture: nonLinearCompression = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mThumbnailBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const/4 v3, 0x3

    const/4 v5, 0x2

    if-eqz p2, :cond_1

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_WITH_THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    aput-object p2, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-eqz p2, :cond_2

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_WITH_JPEG:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    aput-object p2, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_WITHOUT_THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    aput-object v1, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    :try_end_2
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    if-nez p2, :cond_3

    const-string p1, "processPicture X: failed to make dng"

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;->onError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_4
    const-string v1, "processPicture X"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_5
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->DNG_MANAGE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPicture X: fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;->onError()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_7
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mThumbnailBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDateTime(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->date_time:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "setDateTime fail - dngMetaData is not loaded"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setJpegBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpegBuffer"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRawDataFormat(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawDataFormat"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->NATIVE_COMMAND_SET_RAW_DATA_FORMAT:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setThumbnailBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Landroid/util/Size;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "thumbNailBuffer",
            "thumbnailSize",
            "jpegThumbnailSize"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "thumbnailSize"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jpegThumbnailSize"

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_image_width:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_image_height:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result p2

    iput p2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_size:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_jpeg_width:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mDngMetaData:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    iput p3, p2, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_jpeg_height:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p2, "setThumbnailBuffer fail - dngMetaData is not loaded"

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->mThumbnailBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

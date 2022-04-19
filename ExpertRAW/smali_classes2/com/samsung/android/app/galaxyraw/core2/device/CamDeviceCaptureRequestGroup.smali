.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;
.super Ljava/lang/Object;
.source "CamDeviceCaptureRequestGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;,
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;,
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$Usage;,
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$Policy;
    }
.end annotation


# static fields
.field private static METHOD_SET_PART_OF_CHS_REQUEST_LIST:Ljava/lang/reflect/Method; = null

.field static final POLICY_CONCENTRATION:I = 0x1

.field static final POLICY_DISPERSION:I = 0x0

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field static final USAGE_PICTURE:I = 0x2

.field static final USAGE_PREVIEW:I = 0x0

.field static final USAGE_RECORD:I = 0x1


# instance fields
.field private final mCaptureRequestBuilderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    :try_start_0
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "setPartOfCHSRequestList"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->METHOD_SET_PART_OF_CHS_REQUEST_LIST:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "METHOD invoke is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureRequest",
            "captureRequestBuilderList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->mCaptureRequestList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->mCaptureRequestBuilderList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->METHOD_SET_PART_OF_CHS_REQUEST_LIST:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static createCaptureRequestGroup(Ljava/util/List;IJZ)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestTargetList",
            "policy",
            "requestBuildNumber",
            "isHighSpeedRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;",
            ">;IJZ)",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;"
        }
    .end annotation

    const-string v0, "requestTargetList"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotEmpty(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->access$000(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "createCaptureRequestGroup fail - requestTarget in requestTargetList is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;-><init>(ILcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$1;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    move v2, v1

    :goto_2
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->access$000(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;

    invoke-static {v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "createCaptureRequestGroup fail - policy(%d) is not supported"

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->access$000(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->access$000(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I

    move-result v3

    div-int v3, v2, v3

    move v4, v1

    move v5, v4

    :goto_3
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->access$000(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I

    move-result v6

    if-ge v4, v6, :cond_6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;

    invoke-static {v6, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)V

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v3

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;

    invoke-static {v1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->access$300(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;JZ)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method getCaptureRequestBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->mCaptureRequestBuilderList:Ljava/util/List;

    return-object p0
.end method

.method getCaptureRequestList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->mCaptureRequestList:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%s - "

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->mCaptureRequestBuilderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "empty"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->mCaptureRequestBuilderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const-string v1, "[%s] "

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

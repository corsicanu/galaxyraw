.class public Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;
.super Ljava/lang/Object;
.source "LiveFocusUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;,
        Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;
    }
.end annotation


# static fields
.field private static final mBackBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBackBokehLightingLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBackVideoBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDualBokehEffectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFrontBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFrontBokehLightingLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFrontVideoBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLottieResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSingleBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSingleBokehEffectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSingleBokehLightingLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideoBokehEffectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideoLottieResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mDualBokehEffectTypeMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mSingleBokehEffectTypeMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$3;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mVideoBokehEffectTypeMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$4;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mFrontBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$5;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mBackBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$6;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$6;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mSingleBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$7;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$7;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mFrontBokehLightingLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$8;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$8;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mBackBokehLightingLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$9;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$9;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mSingleBokehLightingLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$10;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$10;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mFrontVideoBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$11;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$11;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mBackVideoBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$12;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$12;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mLottieResourceMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$13;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$13;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mVideoLottieResourceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBokehCallbackState(I)Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bokehState"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->values()[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->access$000(Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;)I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    return-object p0
.end method

.method public static getBokehEffectButtonResource(IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "isHighLight"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_0

    const p0, 0x7f0807ca

    goto :goto_0

    :cond_0
    const p0, 0x7f0807c9

    :goto_0
    return p0

    :pswitch_0
    if-eqz p1, :cond_1

    const p0, 0x7f0807e6

    goto :goto_1

    :cond_1
    const p0, 0x7f0807e5

    :goto_1
    return p0

    :pswitch_1
    if-eqz p1, :cond_2

    const p0, 0x7f0807ce

    goto :goto_2

    :cond_2
    const p0, 0x7f0807cd

    :goto_2
    return p0

    :pswitch_2
    if-eqz p1, :cond_3

    const p0, 0x7f0807e2

    goto :goto_3

    :cond_3
    const p0, 0x7f0807e1

    :goto_3
    return p0

    :pswitch_3
    if-eqz p1, :cond_4

    const p0, 0x7f0807de

    goto :goto_4

    :cond_4
    const p0, 0x7f0807dd

    :goto_4
    return p0

    :pswitch_4
    if-eqz p1, :cond_5

    const p0, 0x7f0807c6

    goto :goto_5

    :cond_5
    const p0, 0x7f0807c5

    :goto_5
    return p0

    :pswitch_5
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    const p0, 0x7f0807d5

    goto :goto_6

    :cond_6
    const p0, 0x7f0807d4

    :goto_6
    return p0

    :cond_7
    if-eqz p1, :cond_8

    const p0, 0x7f0807d2

    goto :goto_7

    :cond_8
    const p0, 0x7f0807d1

    :goto_7
    return p0

    :cond_9
    if-eqz p1, :cond_a

    const p0, 0x7f0807ee

    goto :goto_8

    :cond_a
    const p0, 0x7f0807ed

    :goto_8
    return p0

    :cond_b
    if-eqz p1, :cond_c

    const p0, 0x7f0807ea

    goto :goto_9

    :cond_c
    const p0, 0x7f0807e9

    :goto_9
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBokehEffectTitle(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const v0, 0x7f1201f1

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const p0, 0x7f1201f7

    return p0

    :pswitch_1
    const p0, 0x7f1201ef

    return p0

    :pswitch_2
    const p0, 0x7f1201f5

    return p0

    :pswitch_3
    const p0, 0x7f1201f4

    return p0

    :pswitch_4
    const p0, 0x7f1201f0

    return p0

    :pswitch_5
    const p0, 0x7f1201f2

    return p0

    :cond_0
    const p0, 0x7f1201f8

    return p0

    :cond_1
    const p0, 0x7f1201f6

    return p0

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7f120376

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDualBokehEffectLevelSettingKey(II)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "facing"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mFrontBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mBackBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method public static getDualBokehEffectTypeMetadata(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mDualBokehEffectTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getDualBokehGuideText(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "bokehState",
            "facing"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$14;->$SwitchMap$com$samsung$android$app$galaxyraw$util$LiveFocusUtil$BokehCallbackState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f12025c

    const v1, 0x7f1201ed

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f1203ff

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f12025d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    if-eqz p2, :cond_1

    const v0, 0x7f120301

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f12025f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f12025e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDualBokehLightingLevelSettingKey(II)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "facing"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mFrontBokehLightingLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mBackBokehLightingLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method public static getLottieResourceId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "settingKey",
            "settingValue"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const v1, 0x7f11000f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mLottieResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mVideoLottieResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getSingleBokehEffectLevelSettingKey(I)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mSingleBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method public static getSingleBokehEffectTypeMetadata(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mSingleBokehEffectTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getSingleBokehGuideText(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bokehState"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$14;->$SwitchMap$com$samsung$android$app$galaxyraw$util$LiveFocusUtil$BokehCallbackState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f1203ff

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1201ed

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f12025d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f12025b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f12025f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f12025e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSingleBokehLightingLevelSettingKey(I)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mSingleBokehLightingLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method public static getVideoBokehEffectButtonResource(IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "isHighLight"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x7f0807ca

    goto :goto_0

    :cond_0
    const p0, 0x7f0807c9

    :goto_0
    return p0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f0807da

    goto :goto_1

    :cond_2
    const p0, 0x7f0807d9

    :goto_1
    return p0

    :cond_3
    if-eqz p1, :cond_4

    const p0, 0x7f0807c6

    goto :goto_2

    :cond_4
    const p0, 0x7f0807c5

    :goto_2
    return p0

    :cond_5
    if-eqz p1, :cond_6

    const p0, 0x7f0807d2

    goto :goto_3

    :cond_6
    const p0, 0x7f0807d1

    :goto_3
    return p0
.end method

.method public static getVideoBokehEffectLevelSettingKey(II)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "facing"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mFrontVideoBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mBackVideoBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method public static getVideoBokehEffectTitle(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const p0, 0x7f1201f1

    return p0

    :cond_0
    const p0, 0x7f1201ee

    return p0

    :cond_1
    const p0, 0x7f1201f3

    return p0

    :cond_2
    const p0, 0x7f1201f0

    return p0

    :cond_3
    const p0, 0x7f1201f2

    return p0
.end method

.method public static getVideoBokehEffectTypeMetadata(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;->mVideoBokehEffectTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getVideoBokehGuideText(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "bokehState",
            "facing"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$14;->$SwitchMap$com$samsung$android$app$galaxyraw$util$LiveFocusUtil$BokehCallbackState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    const v1, 0x7f120301

    const v2, 0x7f120302

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f1203ff

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p1, 0x7f1201ed

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f12025d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const p1, 0x7f12025f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const p1, 0x7f12025e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

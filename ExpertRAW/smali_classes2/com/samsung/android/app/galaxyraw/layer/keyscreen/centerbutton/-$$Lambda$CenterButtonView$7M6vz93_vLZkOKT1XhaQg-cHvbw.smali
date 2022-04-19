.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$7M6vz93_vLZkOKT1XhaQg-cHvbw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$7M6vz93_vLZkOKT1XhaQg-cHvbw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$7M6vz93_vLZkOKT1XhaQg-cHvbw;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$7M6vz93_vLZkOKT1XhaQg-cHvbw;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$7M6vz93_vLZkOKT1XhaQg-cHvbw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$7M6vz93_vLZkOKT1XhaQg-cHvbw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->lambda$onOrientationChanged$6(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

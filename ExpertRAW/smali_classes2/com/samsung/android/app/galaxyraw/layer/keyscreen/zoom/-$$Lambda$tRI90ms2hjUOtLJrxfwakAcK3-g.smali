.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$tRI90ms2hjUOtLJrxfwakAcK3-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$tRI90ms2hjUOtLJrxfwakAcK3-g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$tRI90ms2hjUOtLJrxfwakAcK3-g;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$tRI90ms2hjUOtLJrxfwakAcK3-g;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$tRI90ms2hjUOtLJrxfwakAcK3-g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$tRI90ms2hjUOtLJrxfwakAcK3-g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

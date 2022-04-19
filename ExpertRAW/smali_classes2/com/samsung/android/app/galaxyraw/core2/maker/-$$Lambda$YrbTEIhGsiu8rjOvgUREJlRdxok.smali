.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$YrbTEIhGsiu8rjOvgUREJlRdxok;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory$MakerBuilder;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$YrbTEIhGsiu8rjOvgUREJlRdxok;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$YrbTEIhGsiu8rjOvgUREJlRdxok;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$YrbTEIhGsiu8rjOvgUREJlRdxok;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$YrbTEIhGsiu8rjOvgUREJlRdxok;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$YrbTEIhGsiu8rjOvgUREJlRdxok;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroid/os/Handler;Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    return-object p0
.end method

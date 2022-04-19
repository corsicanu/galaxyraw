.class public final synthetic Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$Wbum4LP6toN2bcCQ-UeuOgufEcY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$Wbum4LP6toN2bcCQ-UeuOgufEcY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$Wbum4LP6toN2bcCQ-UeuOgufEcY;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$Wbum4LP6toN2bcCQ-UeuOgufEcY;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$Wbum4LP6toN2bcCQ-UeuOgufEcY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$Wbum4LP6toN2bcCQ-UeuOgufEcY;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;->initialize()V

    return-void
.end method

.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ac2hij0zuOZ0TTC9cN3XbaaIOe8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ac2hij0zuOZ0TTC9cN3XbaaIOe8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ac2hij0zuOZ0TTC9cN3XbaaIOe8;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ac2hij0zuOZ0TTC9cN3XbaaIOe8;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ac2hij0zuOZ0TTC9cN3XbaaIOe8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ac2hij0zuOZ0TTC9cN3XbaaIOe8;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->clear()V

    return-void
.end method

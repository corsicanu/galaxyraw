.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$XZOa2qfKIZEWwZqz-iDyROhofiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$XZOa2qfKIZEWwZqz-iDyROhofiQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$XZOa2qfKIZEWwZqz-iDyROhofiQ;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$XZOa2qfKIZEWwZqz-iDyROhofiQ;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$XZOa2qfKIZEWwZqz-iDyROhofiQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$XZOa2qfKIZEWwZqz-iDyROhofiQ;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventHandler;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventHandler;->handle()V

    return-void
.end method

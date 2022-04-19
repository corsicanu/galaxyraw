.class public final synthetic Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/command/ManualBeautyItemSelectCommand;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/command/ManualBeautyItemSelectCommand;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    check-cast p0, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    return-object p0
.end method

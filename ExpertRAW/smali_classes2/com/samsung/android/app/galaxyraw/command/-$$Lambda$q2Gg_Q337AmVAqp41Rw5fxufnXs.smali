.class public final synthetic Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$SubBuilder;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/command/FilterSelectCommand;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V

    check-cast p0, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    return-object p0
.end method

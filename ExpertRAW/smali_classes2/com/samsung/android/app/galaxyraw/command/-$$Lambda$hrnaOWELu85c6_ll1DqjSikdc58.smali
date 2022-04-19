.class public final synthetic Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

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

    new-instance p0, Lcom/samsung/android/app/galaxyraw/command/ProManualSettingSelectCommand;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/command/ProManualSettingSelectCommand;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    check-cast p0, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    return-object p0
.end method

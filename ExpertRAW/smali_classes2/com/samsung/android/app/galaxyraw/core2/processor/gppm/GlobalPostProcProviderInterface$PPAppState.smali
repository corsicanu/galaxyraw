.class public final enum Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;
.super Ljava/lang/Enum;
.source "GlobalPostProcProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PPAppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

.field public static final enum BLOCKED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

.field public static final enum NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

.field public static final enum READY:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

.field public static final enum STARTED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

.field public static final enum STARTING:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

.field public static final enum STOPPED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

.field public static final enum STOPPING:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->READY:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    const-string v5, "STARTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->STARTING:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->STARTED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->BLOCKED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    const-string v11, "STOPPING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->STOPPING:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    const-string v13, "STOPPED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->STOPPED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->mValue:I

    return-void
.end method

.method public static fromInteger(I)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->STOPPED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->STOPPING:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->BLOCKED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->STARTED:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->STARTING:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->READY:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;->mValue:I

    return p0
.end method

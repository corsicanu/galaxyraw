.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
.super Ljava/lang/Enum;
.source "Domain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;


# instance fields
.field domain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v1, "REGISTRATION"

    const/4 v2, 0x0

    const-string v3, "https://regi.di.atlas.samsung.com"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v3, "POLICY"

    const/4 v4, 0x1

    const-string v5, "https://dc.di.atlas.samsung.com"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v5, "DLS"

    const/4 v6, 0x2

    const-string v7, ""

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "domain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-object v0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domain"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-void
.end method

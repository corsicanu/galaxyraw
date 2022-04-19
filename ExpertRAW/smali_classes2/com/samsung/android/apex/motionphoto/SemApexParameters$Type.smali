.class final enum Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
.super Ljava/lang/Enum;
.source "SemApexParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/SemApexParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum BOOLEAN:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum NONE:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum ULONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->NONE:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    const-string v5, "vbln"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->BOOLEAN:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v3, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v5, "INT"

    const/4 v6, 0x2

    const-string v7, "vint"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v5, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v7, "LONG"

    const/4 v8, 0x3

    const-string v9, "vlng"

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v7, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v9, "FLOAT"

    const/4 v10, 0x4

    const-string v11, "vflt"

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v9, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v11, "STRING"

    const/4 v12, 0x5

    const-string v13, "vstr"

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v13, "INTARRAY"

    const/4 v14, 0x6

    const-string v15, "aint"

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v13, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v15, "LONGARRAY"

    const/4 v14, 0x7

    const-string v12, "alng"

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v12, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v15, "ULONGARRAY"

    const/16 v14, 0x8

    const-string v10, "auln"

    invoke-direct {v12, v15, v14, v10}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->ULONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v10, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v15, "STRINGARRAY"

    const/16 v14, 0x9

    const-string v8, "astr"

    invoke-direct {v10, v15, v14, v8}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->$VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-ge p1, p2, :cond_0

    iget p2, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    shl-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/2addr p2, v0

    iput p2, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static valueOf(I)Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 5

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->values()[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->NONE:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->$VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/google/zxing/client/result/iot/IoTResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "IoTResultParser.java"


# static fields
.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final QR_ONBOARDING_URLS:[Ljava/lang/String;

.field private static final SAMJIN_HUV_V3_QR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SAMJIN_QR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SMART_TAG_QR_URL:Ljava/lang/String; = "https://spotted.smartthings.com"

.field private static final ZIGBEE_QR_PATTERN1:Ljava/util/regex/Pattern;

.field private static final ZIGBEE_QR_PATTERN2:Ljava/util/regex/Pattern;

.field private static final ZWAVE_NEW_QR_PATTERN:Ljava/util/regex/Pattern;

.field private static final ZWAVE_OLD_QR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "^(Z:)\\p{Alnum}+(\\$I:)\\p{Alnum}+(\\%SN:)\\p{Alnum}{5}(A)[1-5]{1}\\p{Alnum}{7}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->SAMJIN_QR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(SN:)[0-9]{1}(0)[0-9]{1}(1)[0-9]{6}(\\%E:)\\p{Alnum}{12}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->SAMJIN_HUV_V3_QR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, ".*Z[:\\$]{1}.*(\\$I:)\\p{XDigit}{18}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->ZIGBEE_QR_PATTERN1:Ljava/util/regex/Pattern;

    const-string v0, ".*Z(\\$I:)\\p{XDigit}{18}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->ZIGBEE_QR_PATTERN2:Ljava/util/regex/Pattern;

    const-string v0, "^(zws2dsk:){1}(\\p{Digit}{5}-){7}\\p{Digit}{5}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->ZWAVE_OLD_QR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(90)\\p{Digit}{88,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->ZWAVE_NEW_QR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[\r\n]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "https://qr.samsungiots.cn"

    const-string v1, "https://qrd.samsungiots.cn"

    const-string v2, "https://qr.samsungiots.com"

    const-string v3, "https://qrd.samsungiots.com"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->QR_ONBOARDING_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static isOnboardingStandardQr(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->QR_ONBOARDING_URLS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isSmartTAGQr(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "https://spotted.smartthings.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static isStCameraQr(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "(MN)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "(SN)"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(MAC)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(PIN)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/iot/IoTResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/iot/IoTParsedResult;

    move-result-object p0

    return-object p0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/iot/IoTParsedResult;
    .locals 1

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->SAMJIN_QR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->SAMJIN_SENSOR:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;-><init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V

    return-object p1

    :cond_1
    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->SAMJIN_HUV_V3_QR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->SAMJIN_HUB_V3:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;-><init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V

    return-object p1

    :cond_2
    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->ZWAVE_OLD_QR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->ZWAVE_V2_SPEC_OLD:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;-><init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V

    return-object p1

    :cond_3
    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->ZWAVE_NEW_QR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->ZWAVE_V2_SPEC_NEW:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;-><init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V

    return-object p1

    :cond_4
    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->ZIGBEE_QR_PATTERN1:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultParser;->ZIGBEE_QR_PATTERN2:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/google/zxing/client/result/iot/IoTResultParser;->isStCameraQr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->ST_Camera:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;-><init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V

    return-object p1

    :cond_6
    invoke-static {p0}, Lcom/google/zxing/client/result/iot/IoTResultParser;->isOnboardingStandardQr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->ON_BOARDING_STANDARD_QR:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;-><init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V

    return-object p1

    :cond_7
    invoke-static {p0}, Lcom/google/zxing/client/result/iot/IoTResultParser;->isSmartTAGQr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->SMART_TAG_QR:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;-><init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V

    :cond_8
    return-object p1

    :cond_9
    :goto_0
    new-instance p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    sget-object v0, Lcom/google/zxing/client/result/iot/IoTResultType;->ZIGBEE_V3:Lcom/google/zxing/client/result/iot/IoTResultType;

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/client/result/iot/IoTParsedResult;-><init>(Ljava/lang/String;Lcom/google/zxing/client/result/iot/IoTResultType;)V

    :cond_a
    :goto_1
    return-object p1
.end method

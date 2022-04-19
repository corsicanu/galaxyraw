.class public Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final ERROR:I = -0x1

.field public static final ERROR_ENGINE_NOT_INSTALLED:I = -0x65

.field public static final ERROR_INVALID_REQUEST:I = -0x8

.field public static final ERROR_NETWORK:I = -0x6

.field public static final ERROR_SERVICE:I = -0x4

.field public static final KEY_SYNTHESIZE_PARAM_FOLLOW_BIXBY_VOICE_SETTINGS:Ljava/lang/String; = "PARAM_FOLLOW_BIXBY_VOICE_SETTINGS"

.field public static final KEY_SYNTHESIZE_PARAM_NO_SPEAK:Ljava/lang/String; = "PARAM_NO_SPEAK"

.field public static final KEY_SYNTHESIZE_PARAM_PITCH:Ljava/lang/String; = "KEY_SYNTHESIZE_PARAM_PITCH"

.field public static final KEY_SYNTHESIZE_PARAM_SPEECH_RATE:Ljava/lang/String; = "KEY_SYNTHESIZE_PARAM_SPEECH_RATE"

.field public static final KEY_SYNTHESIZE_PARAM_STREAM:Ljava/lang/String; = "KEY_SYNTHESIZE_PARAM_STREAM"

.field public static final KEY_SYNTHESIZE_PARAM_VOLUME:Ljava/lang/String; = "KEY_SYNTHESIZE_PARAM_VOLUME"

.field public static final KEY_SYNTHESIZE_SERVER_PARAM_AUTHORIZATION:Ljava/lang/String; = "KEY_SYNTHESIZE_SERVER_PARAM_AUTHORIZATION"

.field public static final KEY_SYNTHESIZE_SERVER_PARAM_CLIENT_TYPE:Ljava/lang/String; = "KEY_SYNTHESIZE_SERVER_PARAM_CLIENT_TYPE"

.field public static final KEY_SYNTHESIZE_SERVER_PARAM_PACKAGE_NAME:Ljava/lang/String; = "KEY_SYNTHESIZE_SERVER_PARAM_PACKAGE_NAME"

.field public static final KEY_SYNTHESIZE_SERVER_PARAM_PACKAGE_SIGNING_KEY:Ljava/lang/String; = "KEY_SYNTHESIZE_SERVER_PARAM_PACKAGE_SIGNING_KEY"

.field public static final KEY_SYNTHESIZE_SERVER_PARAM_REQUEST_ID:Ljava/lang/String; = "KEY_SYNTHESIZE_SERVER_PARAM_REQUEST_ID"

.field public static final KEY_SYNTHESIZE_SERVER_PARAM_USER_TYPE:Ljava/lang/String; = "KEY_SYNTHESIZE_SERVER_PARAM_USER_TYPE"

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field private static final LOCALE_DELIMITER:Ljava/lang/String; = "-"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScsApi@TextToSpeech"


# instance fields
.field private final mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback$Stub;

.field private mListener:Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

.field private mLocale:Ljava/util/Locale;

.field private final mParams:Landroid/os/Bundle;

.field private mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

.field private mVoiceMap_downloadable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVoiceMap_valid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mLocale:Ljava/util/Locale;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mParams:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mListener:Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_downloadable:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback$Stub;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_downloadable:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;Ljava/lang/String;)Ljava/util/Vector;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->getValidVoiceVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;Ljava/lang/String;)Ljava/util/Vector;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->getDownloadableVoiceVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mListener:Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    return-object p0
.end method

.method private static convertLocaleCodeToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3

    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "-"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static convertLocaleToLocaleCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getDownloadableVoiceVector(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_downloadable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_downloadable:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_downloadable:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    return-object p0
.end method

.method private getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object p0
.end method

.method private getValidVoiceVector(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    return-object p0
.end method


# virtual methods
.method public getAllDownloadableVoiceTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_downloadable:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_downloadable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->getDownloadableVoiceVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllVoiceTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->getValidVoiceVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDownloadableVoiceTypes(Ljava/util/Locale;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_downloadable:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->convertLocaleToLocaleCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->getDownloadableVoiceVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getMaxInputLength()I
    .locals 0

    const/16 p0, 0xfa0

    return p0
.end method

.method public getSupportLanguages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->convertLocaleCodeToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getVoiceTypes(Ljava/util/Locale;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->convertLocaleToLocaleCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->getValidVoiceVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public initialize(Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;)I
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mListener:Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback$Stub;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->setCallback(Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceMap_valid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "-"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->getValidVoiceVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->getVariantCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, -0x2

    return p0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v0, "KEY_SYNTHESIZE_PARAM_AUDIO_ATTRIBUTES"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setLanguage(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public setVoiceType(Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    return-void
.end method

.method public speak(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->setLanguage(Ljava/util/Locale;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->setVoiceType(Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->setParams(Landroid/os/Bundle;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->setUtteranceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback$Stub;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->setCallback(Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "ScsApi@TextToSpeech"

    const-string p1, "speak : empty input."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public stopSynthesize()I
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/StopRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/StopRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->mTTSServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

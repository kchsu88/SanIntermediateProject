.class public Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;
.super Ljava/lang/Object;
.source "RewardPlus.java"

# interfaces
.implements Lccsancom/mbridge/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# static fields
.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final AMOUNT_MAX:Ljava/lang/String; = "amount_max"

.field public static final CALLBACK_RULE:Ljava/lang/String; = "callback_rule"

.field public static final CURRENCY_ID:Ljava/lang/String; = "currency_id"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final VIRTUAL_CURRENCY:Ljava/lang/String; = "virtual_currency"


# instance fields
.field private amount:I

.field private amountMax:I

.field private callbackRule:I

.field private currencyId:I

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private virtualCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->amountMax:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->callbackRule:I

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->virtualCurrency:Ljava/lang/String;

    .line 27
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->amount:I

    .line 28
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->icon:Ljava/lang/String;

    .line 29
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->currencyId:I

    .line 30
    const-string v0, "Virtual Item"

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->name:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;
    .locals 4

    .line 120
    nop

    .line 121
    if-eqz p0, :cond_1

    .line 122
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;-><init>()V

    .line 123
    const/4 v1, 0x0

    const-string v2, "amount_max"

    invoke-virtual {p0, v2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->setAmountMax(I)V

    .line 124
    const-string v1, "callback_rule"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->setCallbackRule(I)V

    .line 125
    const-string v1, "virtual_currency"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->setVirtualCurrency(Ljava/lang/String;)V

    .line 127
    const-string v1, "icon"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->setIcon(Ljava/lang/String;)V

    .line 128
    const-string v1, "currency_id"

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->setCurrencyId(I)V

    .line 129
    const-string v1, "amount"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->setAmount(I)V

    .line 132
    :cond_0
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    const-string v2, "Virtual Item"

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 136
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static parseByString(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;
    .locals 1

    .line 108
    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->parse(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object p0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 114
    :cond_0
    goto :goto_0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 115
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 46
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->amount:I

    return v0
.end method

.method public getAmountMax()I
    .locals 1

    .line 34
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->amountMax:I

    return v0
.end method

.method public getCallbackRule()I
    .locals 1

    .line 38
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->callbackRule:I

    return v0
.end method

.method public getCurrencyId()I
    .locals 1

    .line 54
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->currencyId:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualCurrency()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->virtualCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(I)V
    .locals 0

    .line 74
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->amount:I

    .line 75
    return-void
.end method

.method public setAmountMax(I)V
    .locals 0

    .line 62
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->amountMax:I

    .line 63
    return-void
.end method

.method public setCallbackRule(I)V
    .locals 0

    .line 66
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->callbackRule:I

    .line 67
    return-void
.end method

.method public setCurrencyId(I)V
    .locals 0

    .line 82
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->currencyId:I

    .line 83
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->icon:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setVirtualCurrency(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->virtualCurrency:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toJsonObject()Lccsanorg/json/JSONObject;
    .locals 3

    .line 91
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 93
    :try_start_0
    const-string v1, "amount_max"

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->amountMax:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 94
    const-string v1, "callback_rule"

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->callbackRule:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 95
    const-string v1, "virtual_currency"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->virtualCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 96
    const-string v1, "amount"

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->amount:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 97
    const-string v1, "icon"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 98
    const-string v1, "currency_id"

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->currencyId:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 99
    const-string v1, "name"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 103
    :goto_0
    return-object v0
.end method

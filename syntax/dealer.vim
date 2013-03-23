" Vim syntax file
" Language:	Dealer script
" Version: 1.0
" Last Change:	18.Mar.2013

if exists("b:current_syntax")
  finish
end

syntax clear
syntax case ignore

" define matches
syntax keyword dealerKeyword generate produce vulnerable dealer predeal
syntax keyword dealerKeyword pointcount altcount condition action

syntax keyword dealerVulnerability none NS EW all
syntax keyword dealerCompass north south east west

syntax match dealerOperator "[-+*/&?:&|<>=]"
syntax keyword dealerOperator not and or
syntax match dealerParentheses "[()]"

syntax region dealerComment  start="^#" end="$"
syntax region dealerComment start="//" end="$"
syntax region dealerCommnet start="/\*" end="\*/"

syntax keyword dealerFunction hcp control loser ccc quality tricks score imps
syntax keyword dealerFunction pt0 pt1 pt2 pt3 pt4 pt5 pt6 pt7 pt8 pt9
syntax keyword dealerFunction tens jacks queens kings aces top2 top3 top4 top5 c13
syntax keyword dealerFunction shape hascard losers

" A suit, e.g. "spades" can either be used as a function or a parameter.
" When it is a function, it will be followed by "("
syntax match dealerSuitFunction "\<spades\>(\@="
syntax match dealerSuitFunction "\<hearts\>(\@="
syntax match dealerSuitFunction "\<diamonds\>(\@="
syntax match dealerSuitFunction "\<clubs\>(\@="

syntax match dealerSuitParameter "\<spades\>(\@!"
syntax match dealerSuitParameter "\<hearts\>(\@!"
syntax match dealerSuitParameter "\<diamonds\>(\@!"
syntax match dealerSuitParameter "\<clubs\>(\@!"

syntax keyword dealerAction printall print printew printpbn printcompact
syntax keyword dealerAction printoneline printes average frequency

" link these matches with hilight groups
highlight link dealerKeyword Keyword
highlight link dealerOperator Operator
highlight link dealerParentheses Delimiter
highlight link dealerComment Comment
highlight link dealerVulnerability Constant
highlight link dealerCompass Constant
highlight link dealerFunction Function
highlight link dealerAction Type
highlight link dealerSuitParameter Constant
highlight link dealerSuitFunction Function

let b:current_syntax = "Dealer"

" vim: tw=130 expandtab tabstop=2 shiftwidth=2:

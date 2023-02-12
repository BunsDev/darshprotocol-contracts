// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "./PoolLibrary.sol";

library OfferLibrary {
    enum Type {
        LENDING_OFFER,
        BORROWING_OFFER
    }

    struct LendingOffer {
        uint160 offerId;
        address principalToken;
        uint256 currentPrincipal;
        uint256 initialPrincipal;
        uint256 interest;
        uint16 daysToMaturity;
        address[] collateralTokens;
        uint160 expiresAt;
        uint160 createdAt;
        address lender;
    }

    struct BorrowingOffer {
        uint160 offerId;
        address principalToken;
        address collateralToken;
        uint256 currentCollateral;
        uint256 initialCollateral;
        uint256 currentPrincipal;
        uint256 initialPrincipal;
        uint256 interest;
        uint16 daysToMaturity;
        uint160 expiresAt;
        uint160 createdAt;
        address borrower;
    }
}
